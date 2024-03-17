(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_account_primary_contact = {
  account_id : string option; [@option]  (** account_id *)
  address_line_1 : string;  (** address_line_1 *)
  address_line_2 : string option; [@option]  (** address_line_2 *)
  address_line_3 : string option; [@option]  (** address_line_3 *)
  city : string;  (** city *)
  company_name : string option; [@option]  (** company_name *)
  country_code : string;  (** country_code *)
  district_or_county : string option; [@option]
      (** district_or_county *)
  full_name : string;  (** full_name *)
  id : string option; [@option]  (** id *)
  phone_number : string;  (** phone_number *)
  postal_code : string;  (** postal_code *)
  state_or_region : string option; [@option]  (** state_or_region *)
  website_url : string option; [@option]  (** website_url *)
}
[@@deriving yojson_of]
(** aws_account_primary_contact *)

let aws_account_primary_contact ?account_id ?address_line_2
    ?address_line_3 ?company_name ?district_or_county ?id
    ?state_or_region ?website_url ~address_line_1 ~city ~country_code
    ~full_name ~phone_number ~postal_code __resource_id =
  let __resource_type = "aws_account_primary_contact" in
  let __resource =
    {
      account_id;
      address_line_1;
      address_line_2;
      address_line_3;
      city;
      company_name;
      country_code;
      district_or_county;
      full_name;
      id;
      phone_number;
      postal_code;
      state_or_region;
      website_url;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_account_primary_contact __resource);
  ()
