Instance.properties = properties({
	{name="Source", type="Source", onUpdate="onSourceUpdate"},
    {name="Duration", type="Int", range={min=0}},
})

function Instance:onInit()
	getUI():setUIProperty({{obj=self, expand=true}})

    self:onSourceUpdate()
end

function Instance:onSourceUpdate(source)
    getUI():setUIProperty({{obj=self.properties:find("Duration"), visible=type(source) == "Video"}})  -- Need to figure out what type a video is
end
