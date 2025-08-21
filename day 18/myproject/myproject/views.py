from django.http import HttpResponse
#def index(request):
#    return HttpResponse("hello")
def index(request):
    return HttpResponse("home")

def rempun(request):
    return HttpResponse("remove punc")
def capfirst(request):
    return HttpResponse("capitalize first")