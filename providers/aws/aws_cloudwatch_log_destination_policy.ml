(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_log_destination_policy = {
  access_policy : string prop;  (** access_policy *)
  destination_name : string prop;  (** destination_name *)
  force_update : bool prop option; [@option]  (** force_update *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination_policy *)

let aws_cloudwatch_log_destination_policy ?force_update ?id
    ~access_policy ~destination_name () :
    aws_cloudwatch_log_destination_policy =
  { access_policy; destination_name; force_update; id }

type t = {
  access_policy : string prop;
  destination_name : string prop;
  force_update : bool prop;
  id : string prop;
}

let register ?tf_module ?force_update ?id ~access_policy
    ~destination_name __resource_id =
  let __resource_type = "aws_cloudwatch_log_destination_policy" in
  let __resource =
    aws_cloudwatch_log_destination_policy ?force_update ?id
      ~access_policy ~destination_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_log_destination_policy __resource);
  let __resource_attributes =
    ({
       access_policy =
         Prop.computed __resource_type __resource_id "access_policy";
       destination_name =
         Prop.computed __resource_type __resource_id
           "destination_name";
       force_update =
         Prop.computed __resource_type __resource_id "force_update";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
