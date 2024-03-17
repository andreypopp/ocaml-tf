(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_connection = {
  bandwidth : string prop;  (** bandwidth *)
  encryption_mode : string prop option; [@option]
      (** encryption_mode *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  request_macsec : bool prop option; [@option]  (** request_macsec *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dx_connection *)

let aws_dx_connection ?encryption_mode ?id ?provider_name
    ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
    ~location ~name __resource_id =
  let __resource_type = "aws_dx_connection" in
  let __resource =
    {
      bandwidth;
      encryption_mode;
      id;
      location;
      name;
      provider_name;
      request_macsec;
      skip_destroy;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection __resource);
  ()
