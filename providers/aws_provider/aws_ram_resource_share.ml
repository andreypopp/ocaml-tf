(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_resource_share__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ram_resource_share__timeouts *)

type aws_ram_resource_share = {
  allow_external_principals : bool option; [@option]
      (** allow_external_principals *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_ram_resource_share__timeouts option;
}
[@@deriving yojson_of]
(** aws_ram_resource_share *)

let aws_ram_resource_share ?allow_external_principals ?tags ?timeouts
    ~name __resource_id =
  let __resource_type = "aws_ram_resource_share" in
  let __resource =
    { allow_external_principals; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_resource_share __resource);
  ()
