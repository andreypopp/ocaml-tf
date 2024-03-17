(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dx_lag = {
  connection_id : string option; [@option]  (** connection_id *)
  connections_bandwidth : string;  (** connections_bandwidth *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  location : string;  (** location *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_dx_lag *)

let aws_dx_lag ?connection_id ?force_destroy ?tags
    ~connections_bandwidth ~location ~name __resource_id =
  let __resource_type = "aws_dx_lag" in
  let __resource =
    {
      connection_id;
      connections_bandwidth;
      force_destroy;
      location;
      name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_lag __resource);
  ()
