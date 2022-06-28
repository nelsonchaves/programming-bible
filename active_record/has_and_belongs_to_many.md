<%= form.collection_check_boxes(:food_ids, Food.all, :id, :name)
