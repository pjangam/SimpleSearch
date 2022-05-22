import json

from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView


class DocumentListView(APIView):
    def get(self, request):
        all_documents = json.loads(open('./simple_search/mock_data.json').read())
        return Response(
            status=status.HTTP_200_OK,
            data={
                "count": len(all_documents),
                "documents": all_documents
            }
        )
