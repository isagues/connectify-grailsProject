package connectify.grailsproject

import grails.util.Pair

class IndexController {

    def index(){

        List<List<ActivityTemplate>> ans = new LinkedList<>()

        for(Category category: Category.findAll()){
            List<ActivityTemplate> activityTList = ActivityTemplate.findAllByCategory(category)
            if(!activityTList.isEmpty())
                ans.add(activityTList)
        }

        [activityTList: ans]
    }
}