//3. Louvain stream
CALL gds.louvain.stream('Customer_Similarity_Graph_Category',{relationshipTypes:['Similar'], relationshipWeightProperty:'score'}) YIELD nodeId, communityId RETURN communityId, count(nodeId) as size ORDER by size DESC