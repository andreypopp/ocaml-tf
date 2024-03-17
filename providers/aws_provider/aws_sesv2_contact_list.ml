(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sesv2_contact_list__topic = {
  default_subscription_status : string;
      (** default_subscription_status *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  topic_name : string;  (** topic_name *)
}
[@@deriving yojson_of]
(** aws_sesv2_contact_list__topic *)

type aws_sesv2_contact_list = {
  contact_list_name : string;  (** contact_list_name *)
  description : string option; [@option]  (** description *)
  tags : (string * string) list option; [@option]  (** tags *)
  topic : aws_sesv2_contact_list__topic list;
}
[@@deriving yojson_of]
(** aws_sesv2_contact_list *)

let aws_sesv2_contact_list ?description ?tags ~contact_list_name
    ~topic __resource_id =
  let __resource_type = "aws_sesv2_contact_list" in
  let __resource = { contact_list_name; description; tags; topic } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_contact_list __resource);
  ()
