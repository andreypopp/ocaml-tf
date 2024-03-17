(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_account_alternate_contact__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_account_alternate_contact__timeouts *)

type aws_account_alternate_contact = {
  account_id : string prop option; [@option]  (** account_id *)
  alternate_contact_type : string prop;
      (** alternate_contact_type *)
  email_address : string prop;  (** email_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
  title : string prop;  (** title *)
  timeouts : aws_account_alternate_contact__timeouts option;
}
[@@deriving yojson_of]
(** aws_account_alternate_contact *)

let aws_account_alternate_contact ?account_id ?id ?timeouts
    ~alternate_contact_type ~email_address ~name ~phone_number ~title
    __resource_id =
  let __resource_type = "aws_account_alternate_contact" in
  let __resource =
    {
      account_id;
      alternate_contact_type;
      email_address;
      id;
      name;
      phone_number;
      title;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_account_alternate_contact __resource);
  ()
