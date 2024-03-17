(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearchserverless_collection__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_collection__timeouts *)

type aws_opensearchserverless_collection = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  standby_replicas : string prop option; [@option]
      (** standby_replicas *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : aws_opensearchserverless_collection__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_collection *)

type t = {
  arn : string prop;
  collection_endpoint : string prop;
  dashboard_endpoint : string prop;
  description : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  standby_replicas : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_opensearchserverless_collection ?description
    ?standby_replicas ?tags ?type_ ?timeouts ~name __resource_id =
  let __resource_type = "aws_opensearchserverless_collection" in
  let __resource =
    ({ description; name; standby_replicas; tags; type_; timeouts }
      : aws_opensearchserverless_collection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_collection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       collection_endpoint =
         Prop.computed __resource_type __resource_id
           "collection_endpoint";
       dashboard_endpoint =
         Prop.computed __resource_type __resource_id
           "dashboard_endpoint";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       name = Prop.computed __resource_type __resource_id "name";
       standby_replicas =
         Prop.computed __resource_type __resource_id
           "standby_replicas";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
