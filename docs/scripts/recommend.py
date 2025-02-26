import random
import os
import yaml
from datetime import datetime

def get_post_info(file_path):
    """从文章中提取元信息"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
        
    # 提取YAML front matter
    if content.startswith('---'):
        end = content.find('---', 3)
        front_matter = yaml.safe_load(content[3:end])
        
        # 提取文章描述(取正文前100个字符)
        description = content[end+3:].strip()
        description = description.split('\n')[0][:100] + '...'
        
        return {
            'title': front_matter.get('title', os.path.basename(file_path)),
            'date': front_matter.get('date', datetime.now()),
            'tags': front_matter.get('tags', []),
            'description': description,
            'url': file_path.replace('docs/', '/').replace('.md', '/')
        }
    return None

def get_random_posts(posts_dir='docs/Blogs/posts', num_posts=6):
    """随机选择指定数量的文章"""
    posts = []
    for root, _, files in os.walk(posts_dir):
        for file in files:
            if file.endswith('.md'):
                file_path = os.path.join(root, file)
                post_info = get_post_info(file_path)
                if post_info:
                    posts.append(post_info)
                    
    # 随机选择文章
    return random.sample(posts, min(num_posts, len(posts)))

def generate_cards_html(posts):
    """生成卡片HTML"""
    html = '<div class="cards-container">'
    
    for post in posts:
        html += f'''
        <a href="{post['url']}" class="card">
            <div class="card-title">{post['title']}</div>
            <div class="card-description">{post['description']}</div>
            <div class="card-meta">
                <span>{post['date'].strftime('%Y-%m-%d')}</span>
            </div>
            <div class="card-tags">
        '''
        
        for tag in post['tags']:
            html += f'<span class="tag">{tag}</span>'
            
        html += '''
            </div>
        </a>
        '''
        
    html += '</div>'
    return html 