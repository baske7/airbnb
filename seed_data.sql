-- INSERT INTO amenities (amenityName) VALUES
('Enter'),
('Hotel'),
('Campaign'),
('Land'),
('Else'),
('Process'),
('Cause'),
('Last'),
('Rock'),
('Or');

-- INSERT INTO properties (userId, city, address, country, title, desc, pricePerNight, maxGuests, bedrooms, bathrooms, isActive, propertyCreated_at) VALUES
(9, 'Shieldshaven', '90783 Nicole Ville', 'Guinea', 'Nearly trade break act.', 'Owner unit collection might best them. Actually specific night since hotel able memory.', 283.05, 2, 3, 2, 0, '2025-04-16 01:44:51'),
(10, 'East Daniel', '7572 Becker Walk', 'Brunei Darussalam', 'Material popular question.', 'Alone than far.', 31.58, 9, 4, 1, 1, '2025-03-28 09:56:27'),
(3, 'North Christopher', '960 Timothy Parkways', 'Antigua and Barbuda', 'Truth age best without.', 'Sit one collection early stop fight. Future degree place.', 295.38, 5, 4, 1, 1, '2025-01-03 05:47:29'),
(1, 'South Joycefort', '157 Stevens Prairie Suite 412', 'China', 'Three lawyer answer agree.', 'Across peace guy employee social positive east. Discussion throughout visit possible just but.', 105.58, 3, 1, 3, 1, '2025-04-17 01:38:37'),
(5, 'Amberfurt', '0003 Jessica Prairie', 'Guatemala', 'Once trade discuss.', 'Who try share pattern matter nice executive. Debate prepare wrong study report as without.', 290.51, 2, 4, 1, 1, '2025-02-24 15:59:09'),
(3, 'Parkerfurt', '833 Turner Locks Apt. 612', 'Poland', 'Others treatment project.', 'Add inside buy. Fall project wait nation strategy. Information book cultural.', 146.91, 3, 3, 1, 0, '2025-01-20 06:33:31'),
(1, 'Melissahaven', '737 Michele Haven', 'New Zealand', 'Six vote.', 'Almost husband area. Receive plant region item standard.', 242.8, 1, 3, 3, 1, '2025-06-23 13:46:11'),
(3, 'North Aprilmouth', '632 Brown Hollow', 'Martinique', 'Quality like gun wrong.', 'Beyond even beautiful goal Congress. Woman voice bed enter benefit yard else.', 236.87, 4, 2, 2, 1, '2025-05-11 00:03:15'),
(10, 'Brooksberg', '391 Vega Isle', 'Bouvet Island (Bouvetoya)', 'Say market country single including.', 'Ready citizen voice ground message trade stage. Herself wish account own.', 77.44, 8, 4, 3, 1, '2025-07-03 20:58:07'),
(10, 'Donaldtown', '9984 Tara Meadow Apt. 713', 'Jordan', 'Stage alone.', 'Expect else source instead recently hour occur. Mr evidence free simply recognize again sit.', 289.35, 3, 4, 2, 0, '2025-01-15 00:11:33');

-- INSERT INTO propertyImages (propertyId, imageURL, isFeatured) VALUES
(1, 'https://picsum.photos/seed/5d0d941b-dc01-4fde-bb5c-74724f7ef927/600/400', 1),
(3, 'https://picsum.photos/seed/90c48439-071a-4181-96a9-fae7785cc10d/600/400', 1),
(3, 'https://picsum.photos/seed/145332a0-882e-4350-8ae4-c49b47666921/600/400', 1),
(9, 'https://picsum.photos/seed/662e5595-fd39-4421-9778-8e0f471c053c/600/400', 0),
(8, 'https://picsum.photos/seed/a793513d-555a-45cf-b24f-e337ea15471f/600/400', 0),
(3, 'https://picsum.photos/seed/8bf3630b-51cb-4ed5-bb5f-c818bf06a32f/600/400', 1),
(4, 'https://picsum.photos/seed/d5836db9-1c09-4a54-977a-61a1cbdd710e/600/400', 1),
(8, 'https://picsum.photos/seed/7fa21bf9-34e7-44cc-965d-97dd2c463e74/600/400', 0),
(4, 'https://picsum.photos/seed/629164fe-0fb5-448b-b029-644a3dcaf8a4/600/400', 1),
(1, 'https://picsum.photos/seed/e2cbb33a-69e0-411b-b552-9206e0b98c99/600/400', 0),
(10, 'https://picsum.photos/seed/c184ea37-56a0-4c6e-a493-1b57f2a0bdcc/600/400', 0),
(9, 'https://picsum.photos/seed/769c269c-e4ca-4942-a1bc-7176c040b8d8/600/400', 1),
(8, 'https://picsum.photos/seed/ae260678-4575-4396-9b5a-86f619cb30b2/600/400', 1),
(9, 'https://picsum.photos/seed/102c9705-d222-4fbb-bf02-093498727cd3/600/400', 1),
(2, 'https://picsum.photos/seed/c3d5dd25-3fb2-4188-88d4-43ce60718603/600/400', 0),
(7, 'https://picsum.photos/seed/84b7b647-301e-48ad-a424-582cfc2ee603/600/400', 1),
(7, 'https://picsum.photos/seed/fed4b86f-29ba-4399-b91f-ad7b42966f1a/600/400', 1),
(6, 'https://picsum.photos/seed/48f1029c-889f-4a34-a36d-1a4d961ce6b4/600/400', 1),
(2, 'https://picsum.photos/seed/341b031d-70fc-488a-ab2c-084638a0a20a/600/400', 0),
(8, 'https://picsum.photos/seed/71c09f08-1e0c-4c66-b5a0-f788028b92f0/600/400', 1);

-- INSERT INTO bookings (propertyId, userId, checkIn, checkOut, numberOfGuests, totalPrice, bookingStatus, bookingCreated_at) VALUES
(6, 9, '2025-05-31', '2025-06-11', 3, 358.8, 'confirmed', '2025-06-21 15:46:22'),
(9, 8, '2025-04-22', '2025-05-02', 1, 292.8, 'confirmed', '2025-07-06 20:05:46'),
(2, 4, '2025-06-21', '2025-07-01', 4, 161.73, 'confirmed', '2025-03-24 16:50:21'),
(5, 3, '2025-06-14', '2025-06-28', 4, 184.98, 'confirmed', '2025-03-06 13:01:14'),
(8, 1, '2025-06-07', '2025-06-15', 1, 413.18, 'confirmed', '2025-02-12 16:35:52'),
(3, 10, '2025-06-08', '2025-06-15', 2, 354.49, 'confirmed', '2025-01-18 18:23:56'),
(3, 5, '2025-04-22', '2025-05-02', 3, 239.67, 'confirmed', '2025-04-22 13:16:46'),
(2, 2, '2025-07-07', '2025-07-09', 4, 96.76, 'confirmed', '2025-04-18 14:56:27'),
(3, 7, '2025-06-03', '2025-06-08', 5, 496.86, 'confirmed', '2025-05-31 22:04:00'),
(4, 8, '2025-05-06', '2025-05-07', 5, 197.87, 'confirmed', '2025-02-13 07:15:10');

-- INSERT INTO reviews (userId, propertyId, rating, comment, reviewCreated_at) VALUES
(10, 8, 1, 'Director husband discuss since training black.', '2025-04-16 19:29:01'),
(5, 4, 5, 'All again leave easy three.', '2025-05-23 14:22:42'),
(3, 10, 1, 'Heavy state boy practice rock.', '2025-01-19 06:00:13'),
(7, 8, 4, 'Pull send century same within listen son treatment.', '2025-05-19 11:21:16'),
(5, 8, 3, 'Part part since bit suddenly his hour particularly nice cut.', '2025-01-30 08:17:10'),
(2, 5, 5, 'Economic plan game plant past glass response.', '2025-05-29 09:14:31'),
(8, 6, 5, 'Tax accept employee guess picture spend someone film.', '2025-03-02 15:05:34'),
(9, 4, 2, 'Help arm certainly individual.', '2025-05-13 07:07:17'),
(3, 10, 4, 'Trial reach your artist property part.', '2025-05-30 09:26:41'),
(6, 6, 5, 'Large morning finish talk always front allow source available.', '2025-01-30 21:59:12');

-- INSERT INTO favourites (propertyId, userId, favouriteCreated_at) VALUES
(1, 1, '2025-04-20 09:12:07'),
(9, 6, '2025-02-24 03:46:11'),
(4, 7, '2025-01-03 10:56:06'),
(6, 10, '2025-06-03 11:27:29'),
(2, 10, '2025-06-13 09:54:38'),
(5, 3, '2025-02-15 08:54:50'),
(10, 7, '2025-06-13 13:17:28'),
(7, 10, '2025-02-13 01:57:18'),
(1, 1, '2025-06-05 22:19:46'),
(4, 4, '2025-01-02 23:52:45');

-- INSERT INTO amenities_properties (amenityId, propertyId) VALUES
(3, 5),
(7, 2),
(9, 3),
(1, 4),
(10, 7),
(10, 3),
(5, 6),
(1, 6),
(9, 4),
(7, 2),
(9, 8),
(1, 8),
(1, 3),
(10, 4),
(1, 3);
