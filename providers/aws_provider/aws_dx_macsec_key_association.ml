(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_macsec_key_association = {
  cak : string prop option; [@option]  (** cak *)
  ckn : string prop option; [@option]  (** ckn *)
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
}
[@@deriving yojson_of]
(** aws_dx_macsec_key_association *)

type t = {
  cak : string prop;
  ckn : string prop;
  connection_id : string prop;
  id : string prop;
  secret_arn : string prop;
  start_on : string prop;
  state : string prop;
}

let aws_dx_macsec_key_association ?cak ?ckn ?id ?secret_arn
    ~connection_id __resource_id =
  let __resource_type = "aws_dx_macsec_key_association" in
  let __resource =
    ({ cak; ckn; connection_id; id; secret_arn }
      : aws_dx_macsec_key_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_macsec_key_association __resource);
  let __resource_attributes =
    ({
       cak = Prop.computed __resource_type __resource_id "cak";
       ckn = Prop.computed __resource_type __resource_id "ckn";
       connection_id =
         Prop.computed __resource_type __resource_id "connection_id";
       id = Prop.computed __resource_type __resource_id "id";
       secret_arn =
         Prop.computed __resource_type __resource_id "secret_arn";
       start_on =
         Prop.computed __resource_type __resource_id "start_on";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes
