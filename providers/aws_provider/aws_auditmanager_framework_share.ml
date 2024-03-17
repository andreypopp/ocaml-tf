(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_auditmanager_framework_share = {
  comment : string prop option; [@option]  (** comment *)
  destination_account : string prop;  (** destination_account *)
  destination_region : string prop;  (** destination_region *)
  framework_id : string prop;  (** framework_id *)
}
[@@deriving yojson_of]
(** aws_auditmanager_framework_share *)

let aws_auditmanager_framework_share ?comment ~destination_account
    ~destination_region ~framework_id __resource_id =
  let __resource_type = "aws_auditmanager_framework_share" in
  let __resource =
    {
      comment;
      destination_account;
      destination_region;
      framework_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_framework_share __resource);
  ()
