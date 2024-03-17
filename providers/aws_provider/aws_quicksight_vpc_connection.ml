(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_vpc_connection__timeouts = {
  create: string option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete: string option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update: string option; [@option] (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
} [@@deriving yojson_of]
(** aws_quicksight_vpc_connection__timeouts *)

type aws_quicksight_vpc_connection = {
  aws_account_id: string option; [@option] (** aws_account_id *)
  dns_resolvers: string list option; [@option] (** dns_resolvers *)
  name: string;  (** name *)
  role_arn: string;  (** role_arn *)
  security_group_ids: string list;  (** security_group_ids *)
  subnet_ids: string list;  (** subnet_ids *)
  tags: (string * string) list option; [@option] (** tags *)
  vpc_connection_id: string;  (** vpc_connection_id *)
  timeouts: aws_quicksight_vpc_connection__timeouts option;
} [@@deriving yojson_of]
(** aws_quicksight_vpc_connection *)

let aws_quicksight_vpc_connection ?aws_account_id ?dns_resolvers ?tags ?timeouts ~name ~role_arn ~security_group_ids ~subnet_ids ~vpc_connection_id  __resource_id =
  let __resource_type = "aws_quicksight_vpc_connection" in
  let __resource = {
    aws_account_id;
    dns_resolvers;
    name;
    role_arn;
    security_group_ids;
    subnet_ids;
    tags;
    vpc_connection_id;
    timeouts;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_vpc_connection __resource);
  ()
  ;;

