(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_connection = {
  bandwidth : string;  (** bandwidth *)
  location : string;  (** location *)
  name : string;  (** name *)
  request_macsec : bool option; [@option]  (** request_macsec *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_dx_connection *)

let aws_dx_connection ?request_macsec ?skip_destroy ?tags ~bandwidth
    ~location ~name __resource_id =
  let __resource_type = "aws_dx_connection" in
  let __resource =
    { bandwidth; location; name; request_macsec; skip_destroy; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection __resource);
  ()
