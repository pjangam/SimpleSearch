from rest_framework.response import Response
from rest_framework.views import APIView


class GreetView(APIView):
    def get(self, request):
        return Response("Hello, World!")
