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

type t = {
  comment : string prop;
  destination_account : string prop;
  destination_region : string prop;
  framework_id : string prop;
  id : string prop;
  status : string prop;
}

let aws_auditmanager_framework_share ?comment ~destination_account
    ~destination_region ~framework_id __resource_id =
  let __resource_type = "aws_auditmanager_framework_share" in
  let __resource =
    ({
       comment;
       destination_account;
       destination_region;
       framework_id;
     }
      : aws_auditmanager_framework_share)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_auditmanager_framework_share __resource);
  let __resource_attributes =
    ({
       comment =
         Prop.computed __resource_type __resource_id "comment";
       destination_account =
         Prop.computed __resource_type __resource_id
           "destination_account";
       destination_region =
         Prop.computed __resource_type __resource_id
           "destination_region";
       framework_id =
         Prop.computed __resource_type __resource_id "framework_id";
       id = Prop.computed __resource_type __resource_id "id";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
