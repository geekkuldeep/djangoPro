from django.urls import path
from . import views
from django.contrib.auth import views as auth_views, urls

urlpatterns = [

    #client side api's
    #account urls
    path('login/', views.login, name='login'),
    path('register/', views.register, name='register'),
    path('logout/', views.logoutUser, name='logout'),
    path('session/', views.checkSession, name='session_check'),
    path('change-password/', views.change_password, name='change_password'),
    path('reset_password/', auth_views.PasswordResetView.as_view(template_name="account/reset_password.html"), name="reset_password"),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name="account/password_reset_form.html"), name="password_reset_confirm"),
    path('reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(template_name="account/password_reset_done.html"), name="password_reset_complete"),
    path('reset_password_sent/', auth_views.PasswordResetDoneView.as_view(template_name="account/password_reset_sent.html"), name="password_reset_done"),

    #template urls
    path('', views.newHome, name='newhome'),
    path('insights/', views.newInsights, name='newins'),
    path('journey/', views.newJourney, name='newjourney'),
    path('cluster/', views.clusterPage, name='cluster'),
    path('play/', views.playPage, name='play'),
    path('sub/', views.subPage, name='sub'),
    path('sub-detail/', views.subDetailPage, name='sub-detail'),
    path('profile/', views.profilePage, name='profile'),
    path('settings/', views.clientSettings, name='settings'),
    path('our-team/', views.ourTeamPage, name='our-team'),
    path('member/', views.addMember, name='add-member'),
    path('careers/', views.careersPage, name='careers'),
    path('contact-us/', views.contactUsPage, name='contact-us'),
    path('about-us/', views.aboutUs, name='about-us'),
    path('mom-monk/', views.momMonk, name='mom-monk'),
    path('partner-with-us/', views.partnerWithUs, name='partner-with-us'),
    path('press-media/', views.pressMedia, name='press-media'),
    path('privacy-policy/', views.privacyPolicy, name='privacy-policy'),
    path('terms-conditions/', views.termsConditions, name='terms-conditions'),

    # help api
    path('help/', views.helpPage, name='help'),
    path('help-question/<str:pk>/', views.helpQuestionPage, name='help-question'),
    path('help-question-answer/<str:pk>', views.helpQuestionAnswerPage, name='help-question-answer'),
    path('help-request/', views.helpFormPage, name='help-request'),
   

    #apply page url
    path('apply-form/', views.applyPage, name='apply-form'),
 
    #application api URL
    path('application-list/', views.getApplicationList, name='list-application'),
    path('application-submit/', views.postApplication, name='submit-application'),
    path('application-specific/', views.getApplication, name='specific-application'),

    #user api
    path('user-list/', views.userList, name='user-list'),
    path('user/<str:pk>/', views.user, name='user'),
    path('user-create/', views.userCreate, name='user-create'),
    path('user-update/<str:pk>/', views.userUpdate, name='user-update'),

    #track sub api
    path('track-list/', views.trackList, name='track-list'),
    path('track/<str:pk>/', views.track, name='track'),
    path('track-create/', views.trackCreate, name='track-create'),
    path('track-detail/<str:tName>', views.singleTrackDeatil, name='single-Track-Deatil'),

    #contact us api
    path('contactus-list/', views.contactUsList, name='contactus-list'),
    path('contactus/<str:pk>/', views.contactUs, name='contactus'),
    path('contactus-create/', views.contactUsCreate, name='contactus-create'),

    #plan api
    path('plan-list/', views.planList, name='plan-list'),
    path('plan/<str:pk>/', views.plan, name='plan'),
    path('plan-create/', views.planCreate, name='plan-create'), 
    # path('plan-rzid/<str:pk>', views.rzid, name='plan-rzid'),

    #insight api
    path('insight-list/', views.insightList, name='insight-list'),
    path('insight/<str:pk>/', views.insightUserDetail, name='insight-user-detail'),
    path('userinsight/<str:pk>/', views.userInsight, name='user-insight'),
    path('insight-create/', views.insightCreate, name='insight-create'),

    #user sub api
    path('usersub-list/', views.userSubtList, name='usersub-list'),
    path('usersub/<str:pk>/', views.userSub, name='usersub'),
    path('usersub-create/', views.userSubCreate, name='usersub-create'),

    #user track api
    path('usertrack-list/', views.userTracktList, name='usertrack-list'),
    path('usertrack/<str:pk>/', views.userTrack, name='usertrack'),
    path('usertrack-create/', views.userTrackCreate, name='usertrack-create'),
    path('usertrack-peruser/<str:userid>', views.perUserTrack, name='usertrack-peruser'),
    path('usertrack-perusercol/<str:userid>', views.perUserTrackCol, name='usertrack-perusercol'),

    #fav track api
    path('favtrack-create/', views.userFavTrackCreate, name='favtrack-create'),
    path('favtrack/<str:pk>/', views.getuserFavTrack, name='favtrack-list'),
    path('favtrack-delete/<str:pk>/', views.userFavTrackDelete, name='favtrack-delete'),

    #user tarck activity api
    path('usertrackactivity/', views.getAllUserTrackActivity, name='usertrackactivity-delete'),
    path('usertrackactivity-create/', views.userTrackActivityCreate, name='usertrackactivity-create'),
    path('usertrackactivity/<int:userid>/', views.getUserTrackActivity, name='usertrackactivity-list'),
    
    #collection api
    path('collection-details/<str:pk>/', views.getOneCollectionTracks, name='collection-details'),
    path('collections/', views.getAllCollections, name='collections'),
    path('collection-list/', views.getCollection, name='collection-list'),
    path('collection-create/', views.collectionCreate, name='collection-create'),
    path('collection/<str:id>', views.oneCollection, name='collection'),

    #track Collection relation api
    path('trackcollection-list/', views.getTrackCollection, name='trackcollection-list'),
    path('trackcollection-create/', views.trackCollectionCreate, name='trackcollection-create'),

    #partnership api
    path('partner-list/', views.allPartner, name='partner-list'),
    path('partner-create/', views.createPartner, name='partner-create'),

    #quotes api
    path('quote-list/', views.quoteList, name='quote-list'),
    path('quote-create/', views.createQuote, name='quote-create'),

    #search api
    path('search-list/', views.searchList, name='search-list'),
    path('search-create/', views.createSearch, name='search-create'), 
  
    #help api
    path('help-list/', views.getHelpList, name='help-list'),
    path('help-create/', views.createHelp, name='help-create'),

    #question api
    path('question-list/', views.getQuesionList, name='question-list'),
    path('question-create/', views.createQuestion, name='question-create'),
    path('answer/<str:qid>', views.getQuesionAnswer, name='question-answer'),

    #help question api
    path('help-question-list/', views.getHelpQuesionList, name='help-question-list'),
    path('help-question-create/', views.createHelpQuestion, name='help-question-create'),
    path('help-question/<str:helpID>', views.getHelpQuesion, name='get-help-question'),

    #stripe api 
    path('config/', views.stripe_config, name='config'),  # new
    path('create-checkout-session/', views.create_checkout_session, name='create-checkout-session'),  # new
    path('webhook/', views.stripe_webhook), # new

    # reminder api
    path('list-reminder/', views.allReminder, name='reminder-list'),
    path('reminder/', views.createReminder, name='create-reminder'),
    path('user-reminder/<str:pk>/', views.userReminder, name='user-reminder'),
    path('update-reminder/<str:pk>', views.reminderUpdate, name='reminder-update'),

    # helpform api
    path('helpform-list/', views.getHelpFormList, name='helpform-list'),
    path('helpform-create/', views.createHelpForm, name='helpform-create'),
    path('helpform/<str:pk>', views.getHelpForm, name='helpform'),

    # blog api
    path('blog-list/', views.blogList, name='blgo-list'),
    path('blog-create/', views.blogCreate, name='blog-create'),
    path('blog/<str:pk>', views.getBlog, name='blog'),
    path('blog-update/<str:pk>', views.blogUpdate, name='blog-update'),
    path('blogs/', views.blogPage, name='blogs'),  
    path('blog-read/<str:pk>', views.blogReadPage, name='blog-read'),
    #payment api

    path('ahhaa-one/',views.ahhaaOnePage,name="ahhaa-one"),
    path('success/',views.successPage,name="success"),
    path('failed/',views.failedPage,name="failed"),
    
    # team api
    path('our-team-list/', views.teamList, name='emp-list'),
    path('emp-create/', views.empCreate, name='emp-create'),
    path('emp/<str:pk>', views.empDetails, name='emp'),
    path('emp-update/<str:pk>', views.empUpdate, name='emp-update'),

]
