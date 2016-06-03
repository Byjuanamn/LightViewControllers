
#import "CustomTableViewControllerDemoTwo.h"
#import "ArrayModelDataSource.h"
#import "FakeSomeEntity.h"
#import "TableViewCellForFakeEntity.h"

@interface CustomTableViewControllerDemoTwo () <UITableViewDelegate> {
    NSArray *model;
}

@property (nonatomic, strong) ArrayModelDataSource *modelArrayDataSource;

@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation CustomTableViewControllerDemoTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Custom Table";
    [self populateModel];
    [self setupTable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setup tabla

- (void) setupTable{
    
    TableViewCellConfigBlock block = ^(TableViewCellForFakeEntity *cell, FakeSomeEntity *item){
        [cell syncronizeFakeModel:item];
    };
    
    self.modelArrayDataSource = [[ArrayModelDataSource alloc]initWithItems:model
                                                                   cellIdentifier:@"CELDA"
                                                               configureCellBlock:block];
    

    self.tableView.delegate = self;
    self.tableView.dataSource = self.modelArrayDataSource;
    
    [self.tableView registerNib:[TableViewCellForFakeEntity nib]
         forCellReuseIdentifier:@"CELDA"];
    
}


#pragma mark - delegado tableView

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90;
}


#pragma mark - crear modelo

- (void) populateModel{
    
    model = @[[[FakeSomeEntity alloc]initWithImageFake:UIImageJPEGRepresentation([UIImage imageNamed:@"image1"], 1) withFakeName:@"Blerch"],
              [[FakeSomeEntity alloc] initWithImageFake:UIImageJPEGRepresentation([UIImage imageNamed:@"image2"], 1) withFakeName:@"Cats"],
              [[FakeSomeEntity alloc]initWithImageFake:UIImageJPEGRepresentation([UIImage imageNamed:@"image3"], 1) withFakeName:@"Mantis Shrimp"]
              ];
    
}

@end
