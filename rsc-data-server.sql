CREATE TABLE IF NOT EXISTS `players` (
    `id` integer not null primary key autoincrement,
    `username` varchar(12),
    `rank` integer default '0',
    `password` varchar(255),
    `x` integer default '122',
    `y` integer default '657',
    `quest_points` integer default '0',
    `fatigue` integer default '0',
    `combat_style` integer default '0',
    `block_chat` boolean default '0',
    `block_private` boolean default '0',
    `block_trade` boolean default '0',
    `block_duel` boolean default '0',
    `camera_auto` boolean default '1',
    `one_mouse_button` boolean default '0',
    `sound_on` boolean default '1',
    `hair_color` integer default '2',
    `top_color` integer default '8',
    `leg_color` integer default '14',
    `head_sprite` integer default '1',
    `body_sprite` integer default '2',
    `skulled` integer default '0',
    `cur_attack` integer default '0',
    `exp_attack` integer default '0',
    `cur_defence` integer default '0',
    `exp_defence` integer default '0',
    `cur_strength` integer default '0',
    `exp_strength` integer default '0',
    `cur_ranged` integer default '0',
    `exp_ranged` integer default '0',
    `cur_prayer` integer default '0',
    `exp_prayer` integer default '0',
    `cur_magic` integer default '0',
    `exp_magic` integer default '0',
    `cur_cooking` integer default '0',
    `exp_cooking` integer default '0',
    `cur_woodcutting` integer default '0',
    `exp_woodcutting` integer default '0',
    `cur_fletching` integer default '0',
    `exp_fletching` integer default '0',
    `cur_fishing` integer default '0',
    `exp_fishing` integer default '0',
    `cur_firemaking` integer default '0',
    `exp_firemaking` integer default '0',
    `cur_crafting` integer default '0',
    `exp_crafting` integer default '0',
    `cur_smithing` integer default '0',
    `exp_smithing` integer default '0',
    `cur_mining` integer default '0',
    `exp_mining` integer default '0',
    `cur_herblaw` integer default '0',
    `exp_herblaw` integer default '0',
    `cur_agility` integer default '0',
    `exp_agility` integer default '0',
    `cur_thieving` integer default '0',
    `exp_thieving` integer default '0',
    `cur_hits` integer default '10',
    `exp_hits` integer default '4616',
    `recovery` json default '{}',
    `friends` json default '[]',
    `ignores` json default '[]',
    `inventory` json default '[]',
    `bank` json default '[]',
    `creation_ip` varchar(255),
    `creation_date` datetime default CURRENT_TIMESTAMP,
    `login_ip` varchar(255),
    `logged_in` boolean default '0',
    `ban_end_date` datetime default '0',
    `mute_end_date` datetime default '0',
    `membership_end_date` datetime default '0',
    `quest_stages` json,
    `cache` json default '{}'
);

CREATE UNIQUE INDEX IF NOT EXISTS `players_username_unique` on `players`
(`username`);
