<?php
    return  [
        'CUSTOM_IMAGE' =>[
            'slide' =>[
                'name' => 'Slide',
                'data' => 1,
                'type' => 'list',
                'note' => '',
                'limit' => 0
            ],

            'map_footer' =>[
                'name' => 'Bản đồ footer',
                'data' => 2,
                'type' => '',
                'note' => '',
                'limit' => 1
            ],
            'bg_middle_home' =>[
                'name' => 'Background giữa trang chủ',
                'data' => 3,
                'type' => '',
                'note' => '',
                'limit' => 1
            ],
            'banner_category' => [
                'name' => 'Banner trang con',
                'data' => 4,
                'type' => '',
                'note' => '',
                'limit' => 1
            ]
        ],
        #END setting image
        # cấu hình trang đơn
        'CUSTOM_SINGLE_PAGE' =>[
            'one_footer' =>[
                'name' => 'Bài viết ở cột 1 footer',
                'data' => 1,
                'note' => 'Bài viết ở cột 1 footer',
                'limit' => 1
            ],

        ],
        #END setting trang don
        # cấu hình danh muc bai viet
        'CUSTOM_NEWS_CATEGORY' =>[
            'footer_col_2' =>[
                'name' => 'Danh mục bài viết ở cột 2 footer',
                'data' => 1,
                'note' => '',
                'limit' => 4
            ],
            'midle_home' =>[
                'name' => 'Danh mục bài viết ở giữa trang chủ',
                'data' => 3,
                'note' => '',
                'limit' => 3
            ],
        ]
        #END setting danh muc bai viet
    ];