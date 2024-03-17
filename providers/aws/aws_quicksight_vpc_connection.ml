(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_vpc_connection__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_quicksight_vpc_connection__timeouts *)

type aws_quicksight_vpc_connection = {
  aws_account_id : string prop option; [@option]
      (** aws_account_id *)
  dns_resolvers : string prop list option; [@option]
      (** dns_resolvers *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  vpc_connection_id : string prop;  (** vpc_connection_id *)
  timeouts : aws_quicksight_vpc_connection__timeouts option;
}
[@@deriving yojson_of]
(** aws_quicksight_vpc_connection *)

type t = {
  arn : string prop;
  availability_status : string prop;
  aws_account_id : string prop;
  dns_resolvers : string list prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  security_group_ids : string list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_connection_id : string prop;
}

let aws_quicksight_vpc_connection ?aws_account_id ?dns_resolvers
    ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids
    ~vpc_connection_id __resource_id =
  let __resource_type = "aws_quicksight_vpc_connection" in
  let __resource =
    ({
       aws_account_id;
       dns_resolvers;
       name;
       role_arn;
       security_group_ids;
       subnet_ids;
       tags;
       vpc_connection_id;
       timeouts;
     }
      : aws_quicksight_vpc_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_vpc_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       availability_status =
         Prop.computed __resource_type __resource_id
           "availability_status";
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       dns_resolvers =
         Prop.computed __resource_type __resource_id "dns_resolvers";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_connection_id =
         Prop.computed __resource_type __resource_id
           "vpc_connection_id";
     }
      : t)
  in
  __resource_attributes
