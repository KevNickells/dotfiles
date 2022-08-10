import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { HERE } from './HERE';

describe('UnimportantComponentComponent', () => {
  let component: HERE;
  let fixture: ComponentFixture<HERE>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ HERE ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(HERE);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
