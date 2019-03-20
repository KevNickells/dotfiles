describe("", () => {
  test("", () => {

    expect(getVisualisations("folder/filename.labels.csv"))
      .toEqual(["image-explorer", "table-view", "json"])
    expect(() => getVisualisations(badPath)) .toThrow(badPath)
  })
})


