(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_log_subscription = {
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
}
[@@deriving yojson_of]
(** aws_directory_service_log_subscription *)

let aws_directory_service_log_subscription ?id ~directory_id
    ~log_group_name () : aws_directory_service_log_subscription =
  { directory_id; id; log_group_name }

type t = {
  directory_id : string prop;
  id : string prop;
  log_group_name : string prop;
}

let register ?tf_module ?id ~directory_id ~log_group_name
    __resource_id =
  let __resource_type = "aws_directory_service_log_subscription" in
  let __resource =
    aws_directory_service_log_subscription ?id ~directory_id
      ~log_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_log_subscription __resource);
  let __resource_attributes =
    ({
       directory_id =
         Prop.computed __resource_type __resource_id "directory_id";
       id = Prop.computed __resource_type __resource_id "id";
       log_group_name =
         Prop.computed __resource_type __resource_id "log_group_name";
     }
      : t)
  in
  __resource_attributes
