from rest_framework.views import APIView


class GreetView(APIView):
    def get(self, request):
        return "Hello, Wold!"
