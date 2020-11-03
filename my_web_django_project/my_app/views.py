from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.status import HTTP_200_OK
from rest_framework.viewsets import ViewSet


class MyViewSet(ViewSet):
    def list(self, request):
        """
        GET /base/

        """
        return Response(status=HTTP_200_OK, data='Hello world')
