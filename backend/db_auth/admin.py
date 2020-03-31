from django.contrib import admin
from db_auth import models

admin.site.register(models.ProfileUser)
admin.site.register(models.Category)
admin.site.register(models.Product)
admin.site.register(models.Store)
admin.site.register(models.Volunteer)
# Register your models here.
