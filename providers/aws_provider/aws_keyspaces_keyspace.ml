(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_keyspaces_keyspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_keyspaces_keyspace__timeouts *)

type aws_keyspaces_keyspace = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_keyspaces_keyspace__timeouts option;
}
[@@deriving yojson_of]
(** aws_keyspaces_keyspace *)

let aws_keyspaces_keyspace ?tags ?timeouts ~name __resource_id =
  let __resource_type = "aws_keyspaces_keyspace" in
  let __resource = { name; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_keyspaces_keyspace __resource);
  ()
