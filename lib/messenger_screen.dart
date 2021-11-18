import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 15,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/40815395?v=4',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.camera_alt,
                  size: 16,
                ),
              )),
          IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.edit,
                  size: 16,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                itemBuilder: ( context , index)=> _buildStoreItem(),
                separatorBuilder:  (context , index)=> SizedBox(height:5),
                itemCount: 3 ),
          ],
        ),
      ),
    );
  }
  Widget _buildStoreItem()=> Row(
    children: [
      Row(
        children: [
          Container(
            width: 60,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text('Mahir Mokhtar'),
                ),
              ],
            ),
          )
        ],
      ),
      const SizedBox(
        width: 8,
      ),
      Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/40815395?v=4',
                    ),
                  ),
                  CircleAvatar(
                    radius: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Mahir Mokhtar'),
            ],
          )
        ],
      ),
      const SizedBox(
        width: 8,
      ),
      Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/40815395?v=4',
                    ),
                  ),
                  CircleAvatar(
                    radius: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Mahir Mokhtar'),
            ],
          )
        ],
      ),
      const SizedBox(
        width: 8,
      ),
      Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/40815395?v=4',
                    ),
                  ),
                  CircleAvatar(
                    radius: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Mahir Mokhtar'),
            ],
          )
        ],
      ),
      const SizedBox(
        width: 8,
      ),
      Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/40815395?v=4',
                    ),
                  ),
                  CircleAvatar(
                    radius: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Mahir Mokhtar'),
            ],
          )
        ],
      ),
      const SizedBox(
        width: 8,
      ),
    ],
  );
  Widget _buildChatItem()=>  Padding(
    padding: const EdgeInsets.all(15.0),
    child: SingleChildScrollView(
        child: Expanded(child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40815395?v=4',
                      ),
                    ),
                    CircleAvatar(
                      radius: 8,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Mahir Mokhtar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text('hi there iam dev'),
                          SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('3:47 PM')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),)
    ),
  );

}
