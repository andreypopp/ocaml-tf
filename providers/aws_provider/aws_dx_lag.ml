(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_lag = {
  connection_id : string prop option; [@option]  (** connection_id *)
  connections_bandwidth : string prop;  (** connections_bandwidth *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dx_lag *)

let aws_dx_lag ?connection_id ?force_destroy ?id ?provider_name ?tags
    ?tags_all ~connections_bandwidth ~location ~name __resource_id =
  let __resource_type = "aws_dx_lag" in
  let __resource =
    {
      connection_id;
      connections_bandwidth;
      force_destroy;
      id;
      location;
      name;
      provider_name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_lag __resource);
  ()
