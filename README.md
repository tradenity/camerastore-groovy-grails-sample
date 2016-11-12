
Grails Camerastore sample
=================================

Welcome to the Grails CameraStore sample application for [Tradenity Java/Groovy SDK](https://github.com/tradenity/java-sdk)


## Live demo

Here you can find live demo of the [Camera store sample application](http://camera-store-sample.tradenity.com/).
This is the application we are going to build here.


## Prerequisites

(Will install automatically via maven)

-  Spring framework > 4.2 (other versions may work but not tested)
-  [Tradenity Java SDK](https://github.com/tradenity/java-sdk)
-  [Spring extensions for the Java SDK](https://github.com/tradenity/java-sdk-spring-ext)



## Setup your credentials

First of all, you have to get API keys for your store, you can find it in your store `Edit` page.
To get there navigate to the stores list page, click on the `Edit` button next to your store name, scroll down till you find the `API Keys` section.


## Initialize the library

Add your Store keys to `grails-app/conf/application.yml` file:

`application.yml`

```ruby
tradenity:
    secretKey: sk_xxxxxxxxxxxxxxxxxxxxxxxxxx
    publicKey: pk_xxxxxxxxxxxxxxxxxxxxxxxxxx

```

If you are using Stripe gateway, type your public key

```ruby
stripe:
  publicKey: pk_xxxxxxxxxxxxxxxxxxxxxxxxxxxxx

```


## Tutorials and sample applications


We also provide a detailed explanation of the code of this sample applications in the form of a step by step tutorials:

[Camera store for Grails tutorial](http://docs.tradenity.com/kb/tutorials/groovy/grails).

