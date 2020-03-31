from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated  


class HelloView(APIView):
    permission_classes = (IsAuthenticated,)             

    def get(self, request):
        username=request.user.username
        content = {'message': username}
        return Response(content)

class UserProfileView(APIView):
    permission_classes=(IsAuthenticated)

    def getUserProfile(self,request):
        username=request.user.username
                
