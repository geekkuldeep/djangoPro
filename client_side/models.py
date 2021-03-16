import uuid
from django.db import models
from datetime import datetime
from django.utils import timezone
from django.contrib.auth.models import User
from django.db.models.signals import post_save

# Create your models here.
class UserProfile(models.Model):
    userID = models.OneToOneField(User, on_delete=models.CASCADE, null=False, primary_key=True)
    userMobile = models.CharField(max_length=50, default='NULL')
    userProviderId = models.CharField(max_length=50, default='NULL')
    userProviderName = models.CharField(max_length=50, default='NULL')
    userProfilePhoto = models.CharField(max_length=50, default='NULL')  
    userResetLink = models.CharField(max_length=50, default='NULL')
    userStatus = models.IntegerField(default=0)
    userType = models.IntegerField(default=1, null=True)
    userCreatedBy = models.CharField(max_length=50, default='self')
    userDOB = models.CharField(max_length=50, default='NULL')
    userCountry = models.CharField(max_length=40, default='NULL')
    userCity = models.CharField(max_length=50, default='NULL')
    userGender = models.CharField(max_length=10, default='NULL', blank=True)
    userCountryCode = models.CharField(max_length=5, default='NULL')
    userPlatformTime = models.IntegerField(default=0)

    class Meta:
        db_table = 'userProfile'

    class Meta:
        db_table = 'userProfile'

class Track(models.Model):
    trackID = models.AutoField(primary_key=True, serialize=False)
    trackName = models.CharField(max_length=200, default=None)
    trackAudioLength = models.IntegerField(default=0)
    trackDescription = models.CharField(max_length=800, default=None)
    trackStatus = models.IntegerField(default=1)
    trackAudio = models.CharField(max_length=800, default=None)
    # trackAudio = models.FileField(upload_to='Tracks',default=None)
    trackAudioClip = models.FileField(upload_to='Tracks/Clip', default='clip') 
    trackTranscript = models.TextField(default=None)
    trackKeyword = models.CharField(max_length=800, default=None)
    # trackCoverArt = models.ImageField(upload_to='Tracks', default='img/link')
    trackCoverArt = models.CharField(max_length=800, default=None)
    trackFormat = models.IntegerField(default=1)
    trackCreatedOn = models.DateField(auto_now_add=True)
    trackUpdatedOn = models.DateField(auto_now_add=True)
    trackCreatedBy = models.CharField(max_length=100, blank=True)
    trackUpdatedBy = models.CharField(max_length=100, blank=True)
    

    class Meta:
        db_table = 'track'

class Plan(models.Model):
    planID = models.AutoField(primary_key=True, serialize=False)
    planName = models.CharField(max_length=50)
    isPlanMonthly = models.BooleanField(default=False)
    planAmount = models.CharField(max_length=50, blank=True)
    rpayPlanID = models.CharField(max_length=25, default='NULL')
    memberValidCount = models.IntegerField(default=1)

    class Meta:
        db_table = 'plan'

class ContactUs(models.Model):
    contactUsID = models.AutoField(primary_key=True, serialize=False)
    contactUsEmail = models.CharField(max_length=50, default=None)
    contactUsSubject = models.CharField(max_length=50, default=None)
    contactUsContact = models.CharField(max_length=20, default='N/A')
    contactUsDescription = models.CharField(max_length=250, default=None)
    contactUsCreatedOn = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'contactUs'

class UserInsight(models.Model):
    insightID = models.AutoField(primary_key=True, serialize=False)
    userID = models.ForeignKey(User, on_delete=models.CASCADE)
    userInsight = models.CharField(max_length=100)
    userInsightCreatedOn = models.DateField(auto_now_add=True)
    userInsightUpdatedOn = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'insight'

class UserPlan(models.Model):
    userPlanID = models.AutoField(primary_key=True, serialize=False)
    userID = models.ForeignKey(User, on_delete=models.CASCADE)
    planID = models.ForeignKey(Plan, on_delete=models.CASCADE)
    subscribedOn = models.DateField(auto_now_add=True)
    subscribeUpdatedOn = models.DateField(auto_now_add=True)
    planType = models.IntegerField(default=1)# 1 for annunally 0 for monthly
    planExpiry = models.DateField(default=None)
    rpayCustomerID = models.CharField(max_length=25, default='NULL')

    class Meta:
        db_table = 'userPlan'

class UserTrackActivity(models.Model):
    userTrackActivityID = models.AutoField(primary_key=True, serialize=False)
    userID = models.ForeignKey(User, on_delete=models.CASCADE)
    trackID = models.ForeignKey(Track, on_delete=models.CASCADE)
    activityDateTime = models.DateField(auto_now_add=True)
    trackPauseTime = models.CharField(max_length=8, default=0)
    trackStatus = models.BooleanField(default=0) #zero for pause 1 for completed

    class Meta:
        db_table = 'userTrackActivity'

class UserFavTrack(models.Model):
    userFavTrackID = models.AutoField(primary_key=True, serialize=False)
    userID = models.ForeignKey(User, on_delete=models.CASCADE)
    trackID = models.ForeignKey(Track, on_delete=models.CASCADE)

    class Meta:
        db_table = 'userFavTrack'

class Collection(models.Model):
    collectionID = models.AutoField(primary_key=True, serialize=False)
    collectionName = models.CharField(max_length=100)
    collectionDecription = models.CharField(max_length = 250,default=None)   
    collectionCoverArt = models.ImageField(upload_to='Collection',default=None)
    collectionStatus = models.IntegerField(default=1)
    collectionCreatedOn = models.DateField(auto_now_add=True)
    collectionUpdatedOn = models.DateField(auto_now_add=True)
    collectionCreatedBy = models.CharField(max_length=100, blank=True)
    collectionUpdatedBy = models.CharField(max_length=100, blank=True)
    isCollection = models.IntegerField(default=1)
    class Meta:
        db_table = 'collection'

class Category(models.Model):
    categoryID = models.AutoField(primary_key=True) 
    categoryName = models.CharField(max_length=50)  
    categoryDecription = models.CharField(max_length = 250,default=None)   
    categoryCoverArt = models.ImageField(upload_to='Category',default=None) # for creating file input  
    categoryStatus = models.IntegerField(default=1)
    categoryCreatedOn = models.DateField(auto_now_add=True)
    categoryUpdatedOn = models.DateField(auto_now_add=True)
    categoryCreatedBy = models.CharField(max_length=100, blank=True)
    categoryUpdatedBy = models.CharField(max_length=100, blank=True)

    class Meta: 
        db_table = 'categroy'

class UserTrack(models.Model):
    userTrackID = models.AutoField(primary_key=True, serialize=False)
    userID = models.ForeignKey(User, on_delete=models.CASCADE, to_field='id')
    trackID = models.ForeignKey(Track, on_delete=models.CASCADE, to_field='trackID')
    collectionID = models.ForeignKey(Collection, on_delete=models.CASCADE, to_field='collectionID')

    class Meta:
        db_table = 'userTrack'

class TrackCollection(models.Model):
    trackCollectionID = models.AutoField(primary_key=True, serialize=False)
    collectionID = models.ForeignKey(Collection, on_delete=models.CASCADE)
    trackID = models.ForeignKey(Track, on_delete=models.CASCADE)

    class Meta:
        db_table = 'trackcollectionmapping'
        unique_together=('trackID','collectionID')

class Partner(models.Model):
    partnerRequestID = models.AutoField(primary_key=True, serialize=False)
    partnerFName = models.CharField(max_length=30, default=0)
    partnerLName = models.CharField(max_length=30, default=0)
    partnerEmail = models.CharField(max_length=30, default=0)
    partnerOrgName = models.CharField(max_length=30, default=0)
    partnerOrgSize = models.CharField(max_length=8, default=0)
    partnerOrgSize = models.CharField(max_length=8, default=0)
    partnerCountry = models.CharField(max_length=30, default=0)
    partnerCity = models.CharField(max_length=30, default=0)
    partnerCheck = models.CharField(max_length=8, default=0)
    partnerType = models.CharField(max_length=30, default=0)
    partnerAudience = models.CharField(max_length=30, default=0)
    partnerGoal = models.CharField(max_length=30, default=0)
    partnerBudget = models.CharField(max_length=30, default=0)
    partnerReach = models.CharField(max_length=30, default=0)
    partnerDescription = models.CharField(max_length=200, default=0)
    partnerCreatedOn = models.DateField(auto_now_add=True)
    
    class Meta:
        db_table = 'partner'

class Quotes(models.Model):
    quoteID = models.AutoField(primary_key=True, serialize=False)
    quoteCoverArt = models.CharField(max_length=200, default=None)
    quoteCreatedOn = models.DateField(auto_now_add=True)
    quoteUpdatedOn = models.DateField(auto_now_add=True)

    class Meta:
        db_table = 'quotes'

class Search(models.Model):
    searchID = models.AutoField(primary_key=True, serialize=False)
    searchQuery = models.CharField(max_length=200, default=None)
    searchTimes = models.IntegerField(default=1)
    
    class Meta:
        db_table = 'search'

class Help(models.Model):
    helpID = models.AutoField(primary_key=True, serialize=False)
    helpHeading = models.CharField(max_length=200, default=None)

    class Meta:
        db_table = 'help'

class Questions(models.Model):
    questionID = models.AutoField(primary_key=True, serialize=False)
    questionName = models.CharField(max_length=200, default=None)
    queationsAnswer = models.CharField(max_length=500, blank=True)

    class Meta:
        db_table = 'question'

class HelpQuestions(models.Model):
    helpQuestionID = models.AutoField(primary_key=True, serialize=False)
    helpID = models.ForeignKey(Help, on_delete=models.CASCADE)
    questionID = models.ForeignKey(Questions, on_delete=models.CASCADE)

    class Meta:
        db_table = 'helpQuestion'

class CollectionCategoryMapper(models.Model):
    collectionCategoryID = models.AutoField(primary_key=True, serialize=False)
    collectionID = models.ForeignKey(Collection, to_field='collectionID', on_delete=models.CASCADE)
    categoryID = models.ForeignKey(Category, to_field='categoryID', on_delete=models.CASCADE)

    class Meta:
        db_table="collectioncategorymapping"
        unique_together=('collectionID','categoryID')

class StripeCustomer(models.Model):
    userID = models.OneToOneField(User, on_delete=models.CASCADE)
    stripeCustomerId = models.CharField(max_length=255, default='')
    stripeSubscriptionId = models.CharField(max_length=255, default='')
    stripePlanID = models.ForeignKey(Plan, to_field='planID', on_delete=models.CASCADE)

    class Meta:
       db_table = 'stripeCustomer'

class Reminder(models.Model):
    userID = models.OneToOneField(to=User, on_delete=models.CASCADE)
    userInActivity = models.BooleanField(default=1)  # 0 for false 1 for true
    newCollectionArrival = models.BooleanField(default=1) 
    dailyMotivation = models.BooleanField(default=1)

    class Meta:
        db_table = 'reminder'

def create_profile(sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(userID=instance)
        StripeCustomer.objects.create(userID=instance)
        Reminder.objects.create(userID=instance)

post_save.connect(create_profile, sender=User)

class HelpForm(models.Model):
    helpFormID = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    helpEmail = models.CharField(max_length=100, default='N/A')
    helpSubject = models.CharField(max_length=100, default='N/A')
    helpDescription = models.CharField(max_length=100, default='N/A')

    class Meta:
        db_table = 'helpForm'


class ApplyForm(models.Model):
    applicationID = models.AutoField(primary_key=True, serialize=False)
    applicantName = models.CharField(max_length=200, default=None)
    applicantEmail = models.CharField(max_length=200, default=None)
    applicantContact = models.CharField(max_length=50, default=None)
    applicantRole = models.CharField(max_length=200, default=None)
    applicantCV = models.FileField(upload_to='CV',default=None)
    applicantLIn = models.URLField(max_length=200, default=None)
    applicantPortfolio = models.URLField(max_length=200, default='NA')
    applicantVision = models.CharField(max_length=1200, default=None)
    applCreatedOn = models.DateTimeField(auto_now_add=True)
 
    class Meta:
        db_table = "applications"

class Blog(models.Model):
    blogID =  models.AutoField(primary_key=True, serialize=False)
    blogTitle = models.CharField(max_length=100, default='N/A')
    blogImage = models.ImageField(upload_to='blog',default=None)
    blogDescription = models.TextField(default='N/A')
    blogDate = models.DateTimeField(auto_now_add=True)
    blogURL = models.CharField(max_length=200, default='N/A')
    blogCreatedBy = models.CharField(max_length=30, default='N/A')

    class Meta:
        db_table = 'blog'

class Member(models.Model):
    inviteeUserID = models.ForeignKey(User, on_delete=models.CASCADE)
    memberEmail = models.EmailField(max_length=100, default=None)
    subscriptionActive = models.BooleanField(default=False)
    memberCreatedOn = models.DateTimeField(auto_now=True)
    class Meta:
        db_table = "member"

class Team(models.Model):
    empID = models.AutoField(primary_key=True, serialize=False)
    empName = models.CharField(max_length=100, default='N/A')
    empDesignation = models.CharField(max_length=100, default='N/A')
    empName = models.CharField(max_length=100, default='N/A')
    empPhoto = models.FileField(upload_to='team', default='N/A')
    empLinkedln = models.CharField(max_length=150, default='N/A')
    empDuration = models.CharField(max_length=150, default='N/A')
    empOrder = models.CharField(max_length=150, default='N/A')
    empDescrition = models.CharField(max_length=150, default='N/A')
    
    class Meta:
        db_table = 'team'