from django.db import models
from django.contrib.auth.models import User


class Category(models.Model):
    name = models.CharField(max_length=100)
    
    
class Tag(models.Model):
    name = models.CharField(max_length=100)
    

class Post(models.Model):
    # 文章标题
    title = models.CharField(max_length=70)
    # 文章正文
    body = models.TextField()
    
    # 创建时间和最后一次修改时间，存储时间的字段用 DateTimeField 类型。
    created_time = models.DateTimeField()
    modified_time = models.DateTimeField()
    
    # 文章摘要，可以没有文章摘要，但默认情况下 CharField 要求我们必须存入数据，否则就会报错。
    # 指定 CharField 的 blank=True 参数值后就可以允许空值了。
    excerpt = models.CharField(max_length=200, blank=True)
    
    # ForeignKey，即一对多的关联关系。
    category = models.ForeignKey(Category)
    
    # ManyToManyField，表明这是多对多的关联关系。指定了 blank=True，允许空。
    tags = models.ManyToManyField(Tag, blank=True)
    
    # 规定一篇文章只能有一个作者，而一个作者可能会写多篇文章，因此这是一对多的关联关系。
    author = models.ForeignKey(User)
