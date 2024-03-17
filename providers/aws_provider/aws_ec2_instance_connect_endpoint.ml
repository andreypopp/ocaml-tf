(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_instance_connect_endpoint__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_ec2_instance_connect_endpoint__timeouts *)

type aws_ec2_instance_connect_endpoint = {
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_ec2_instance_connect_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_instance_connect_endpoint *)

let aws_ec2_instance_connect_endpoint ?tags ?timeouts ~subnet_id
    __resource_id =
  let __resource_type = "aws_ec2_instance_connect_endpoint" in
  let __resource = { subnet_id; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_instance_connect_endpoint __resource);
  ()
