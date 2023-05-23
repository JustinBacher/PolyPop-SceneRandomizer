Instance.properties = properties({
	{name="Random", type="Bool"},
	{name="Sources", type="ObjectSet", set_types={type="PolyPopObject", index="SourceCycler.Source"}, onUpdate="onSourcesUpdate"},
	{name="Width", type="Int", range={min=0}},
	{name="Height", type="Int", range={min=0}},
})

function Instance:onInit()
	getUI():setUIProperty({{obj=self, expand=true}})
end

function Instance:onSourcesUpdate()
	if self.properties.Sources:getKit():getObjectCount() <= 1 then
		getEditor():stopTimer("SourceCycler")
		return
	end
end
