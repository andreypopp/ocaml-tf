(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpclattice_access_log_subscription = {
  destination_arn : string prop;  (** destination_arn *)
  id : string prop option; [@option]  (** id *)
  resource_identifier : string prop;  (** resource_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_vpclattice_access_log_subscription *)

let aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
    ~destination_arn ~resource_identifier () :
    aws_vpclattice_access_log_subscription =
  { destination_arn; id; resource_identifier; tags; tags_all }

type t = {
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~destination_arn
    ~resource_identifier __resource_id =
  let __resource_type = "aws_vpclattice_access_log_subscription" in
  let __resource =
    aws_vpclattice_access_log_subscription ?id ?tags ?tags_all
      ~destination_arn ~resource_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpclattice_access_log_subscription __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       destination_arn =
         Prop.computed __resource_type __resource_id
           "destination_arn";
       id = Prop.computed __resource_type __resource_id "id";
       resource_arn =
         Prop.computed __resource_type __resource_id "resource_arn";
       resource_identifier =
         Prop.computed __resource_type __resource_id
           "resource_identifier";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
