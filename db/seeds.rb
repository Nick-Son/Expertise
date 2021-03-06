# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Areas of expertise
ExpertiseArea.create! title: 'VR', description: 'Virtual reality (VR) is a computer technology that uses virtual reality headsets or multi-projected environments, sometimes in combination with physical environments or props, to generate realistic images, sounds and other sensations that simulate a users physical presence in a virtual or imaginary environment.'
ExpertiseArea.create! title: 'Journalism', description: 'Journalism is the production and distribution of reports on the interaction of events, facts, ideas, and people that are the news of the day and that impacts society to at least some degree.'
ExpertiseArea.create! title: 'Filmmaking', description: 'Filmmaking (or, in an academic context, film production) is the process of making a film, generally in the sense of films intended for extensive theatrical exhibition.'
ExpertiseArea.create! title: 'InfoSec', description: 'Information security, sometimes shortened to InfoSec, is the practice of preventing unauthorized access, use, disclosure, disruption, modification, inspection, recording or destruction of information.'
ExpertiseArea.create! title: 'Writing', description: 'Writing is a medium of human communication that represents language and emotion with signs and symbols.'
ExpertiseArea.create! title: 'Political Science', description: 'Political science, is a social science which deals with systems of governance, and the analysis of political activities, political thoughts and political behaviour.'
ExpertiseArea.create! title: 'Digital Media', description: 'Digital media are any media that are encoded in machine-readable formats. Digital media can be created, viewed, distributed, modified and preserved on digital electronics devices.'
ExpertiseArea.create! title: 'E-commerce', description: 'E-commerce is a transaction of buying or selling online. Electronic commerce draws on technologies such as mobile commerce, electronic funds transfer, supply chain management, Internet marketing, online transaction processing, electronic data interchange (EDI), inventory management systems, and automated data collection systems.'
ExpertiseArea.create! title: 'IoT', description: 'The Internet of things (IoT) is the network of physical devices, vehicles, home appliances, and other items embedded with electronics, software, sensors, actuators, and network connectivity which enable these objects to connect and exchange data.'
ExpertiseArea.create! title: 'Data & Cloud Analytics', description: 'Data analysis, also known as analysis of data or data analytics, is a process of inspecting, cleansing, transforming, and modeling data with the goal of discovering useful information, suggesting conclusions, and supporting decision-making.'
ExpertiseArea.create! title: 'Entrepreneurialism', description: 'Entrepreneurialism is defined as starting new businesses, or getting involved with new ventures or ideas.'

# Example Users
# nonny = User.create!(email: 'nonny@example.com', password: 'password')
# nuri = User.create!(email: 'nuri@example.com', password: 'password')
# ai = User.create!(email: 'aiweiwei@example.com', password: 'password')
# rachel = User.create!(email: 'rachel@example.com', password: 'password')
# tanehisi = User.create!(email: 'tanehisi@example.com', password: 'password')
# allie = User.create!(email: 'allie@example.com', password: 'password')
# sam = User.create!(email: 'sam@example.com', password: 'password')

# nonny.confirm
# nuri.confirm
# ai.confirm
# rachel.confirm
# tanehisi.confirm
# allie.confirm
# sam.confirm

# Profile.create!(user: nonny, first_name: 'Nonny', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')
# Profile.create!(user: nuri, first_name: 'Nuri', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')
# Profile.create!(user: ai, first_name: 'Ai', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')
# Profile.create!(user: rachel, first_name: 'Rachel', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')
# Profile.create!(user: tanehisi, first_name: 'Ta-Nehisi', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')
# Profile.create!(user: allie, first_name: 'Allie', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')    
# Profile.create!(user: sam, first_name: 'Sam', last_name: 'Test', bio: '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."')    
