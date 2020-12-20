import sys
from github import Github

g = Github("insert you own GH token here")
user = g.get_user()
repo = user.create_repo(sys.argv[1], description=sys.argv[2])
