INSERT INTO public.phone (id, zone, code, phone) VALUES ('593d5833-4696-48e4-90cb-fadaeceeb833', '+55', '21', '991992233');

INSERT INTO public.address (id, street, number, zip_code) VALUES ('e8b7c4b5-7b0d-4f3f-8b5a-9b9f4f4f4f4f', 'street 1', '123', 'zip code 1');

INSERT INTO public.contact (id, address_id, name) VALUES ('77b7e8b2-ca3d-4ee5-9eba-64d5c93ac3f1', 'e8b7c4b5-7b0d-4f3f-8b5a-9b9f4f4f4f4f', 'Reginaldo Morais');

INSERT INTO public.contact_phone (phone_id, contact_id) VALUES ('593d5833-4696-48e4-90cb-fadaeceeb833', '77b7e8b2-ca3d-4ee5-9eba-64d5c93ac3f1');
