(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_opensearchserverless_vpc_endpoint = {
  name : string prop;  (** name *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_vpc_endpoint *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_opensearchserverless_vpc_endpoint ?security_group_ids
    ?timeouts ~name ~subnet_ids ~vpc_id () :
    aws_opensearchserverless_vpc_endpoint =
  { name; security_group_ids; subnet_ids; vpc_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

let register ?tf_module ?security_group_ids ?timeouts ~name
    ~subnet_ids ~vpc_id __resource_id =
  let __resource_type = "aws_opensearchserverless_vpc_endpoint" in
  let __resource =
    aws_opensearchserverless_vpc_endpoint ?security_group_ids
      ?timeouts ~name ~subnet_ids ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_vpc_endpoint __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
