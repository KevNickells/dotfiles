import { TestBed } from "@angular/core/testing";
import { MockBuilder } from "ng-mocks";
import { TESTTHIS } from "./LOCATION";
import { TESTMODULE } from "./MODULELOCATION";

describe("Test", () => {
  beforeEach(() => {
    return MockBuilder(TESTTHIS, TESTMODULE);
  });

  it("operate on class", () => {
    const fixture = TestBed.createComponent(TESTTHIS);
    expect(fixture).toBeDefined();
    const spy = spyOn(fixture.componentInstance.showNewData, "emit");
    fixture.componentInstance.showNewDataClicked();
    expect(spy).toHaveBeenCalled();
  });
});
