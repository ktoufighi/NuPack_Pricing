# NuPack_Pricing Problem
NuPack is responsible for taking existing products and repackaging them for sale at electronic stores like Best Buy. Companies will phone up NuPack, explain the process and NuPack needs to quickly give them an estimate of how much it will cost. Different markups to the job:

* Without exception, there is a flat markup on all jobs of 5%
* For each person that needs to work on the job, there is a markup of 1.2%

Markups are also added depending on the types of materials involved:

* If pharmaceuticals are involved, there is an immediate 7.5% markup
* For food, there is a 13% markup
* Electronics require a 2% markup
* Everything else, there is no markup

Another system calculates the base price depending on how many products need to be repackaged. As such, the markup calculator should accept the initial base price along with the different categories of markups and calculate a final cost for a project.

The flat markup is calculated first and then all other markups are calculated on top of the base price plus flat markup.

# Write Up
List of installed dependencies
* Ruby version 2.3.1
* irb version 0.9.6
* Homebrew version 1.1.4
* git version 2.10.0

For this assignment there was no need to install any gems.

Used git as version control for all the commits.  
Typed $git init in the terminal window and then giving it a file name.

A repo was created on github.com under the name of NuPack_Pricing and cloned to the machine using git clone plus the link to the github repo where all the commits will be pushed to.

type irb in the terminal and then load 'filename.rb' to see it run and pass first. The input is all included in the rate.rb file which will generate the output every time the ruby file is run or gets loaded.

all commits are pushed to github.com/ktoufighi account.

# Approach 1:
There are different ways of approaching this problem.

My first approach was to use a class Rate in first ruby file rate.rb. Assigned individual classes for each type of markup, one for Basic, one for Food, another for worker and etc. Then inside each child class I used a method called get_quote to call the markup. All secondary classes inherent the from the parent class Rate.

The a second ruby file has a class Calculation to calculate the price for each item and find out how to get the total_quote for each object. The final ruby file our main.rb, require_relative to 'rate' and 'calculate' classes. Here we would put everything together to get the result. creating new instance of the class Calculate for every new object, giving it our arguments that were defined earlier and run it in irb.

However I ended up choosing a different shorter approach to solve the problem.

# Approach 2:
I still worked with the original class Rate inside rate.rb file. So recycled part of the code from before including the arguments etc.
The difference was instead of using individual class for each type of markup, I made a single conditional method called markups. And defined a if statement for each condition or each variety of markup. Used the formula to do the math. To make the report look better in irb I created a couple of methods for product_description and worker_rate for each object or instance of the class Rate. That worked a lot better.
