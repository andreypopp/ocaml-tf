(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_workspaces_connection_alias__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_workspaces_connection_alias__timeouts *)

type aws_workspaces_connection_alias = {
  connection_string : string;
      (** The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com. *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_workspaces_connection_alias__timeouts option;
}
[@@deriving yojson_of]
(** aws_workspaces_connection_alias *)

let aws_workspaces_connection_alias ?tags ?timeouts
    ~connection_string __resource_id =
  let __resource_type = "aws_workspaces_connection_alias" in
  let __resource = { connection_string; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_workspaces_connection_alias __resource);
  ()
