(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_macsec_key_association = {
  cak : string prop option; [@option]  (** cak *)
  ckn : string prop option; [@option]  (** ckn *)
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
}
[@@deriving yojson_of]
(** aws_dx_macsec_key_association *)

let aws_dx_macsec_key_association ?cak ?ckn ?id ?secret_arn
    ~connection_id () : aws_dx_macsec_key_association =
  { cak; ckn; connection_id; id; secret_arn }

type t = {
  cak : string prop;
  ckn : string prop;
  connection_id : string prop;
  id : string prop;
  secret_arn : string prop;
  start_on : string prop;
  state : string prop;
}

let make ?cak ?ckn ?id ?secret_arn ~connection_id __id =
  let __type = "aws_dx_macsec_key_association" in
  let __attrs =
    ({
       cak = Prop.computed __type __id "cak";
       ckn = Prop.computed __type __id "ckn";
       connection_id = Prop.computed __type __id "connection_id";
       id = Prop.computed __type __id "id";
       secret_arn = Prop.computed __type __id "secret_arn";
       start_on = Prop.computed __type __id "start_on";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_macsec_key_association
        (aws_dx_macsec_key_association ?cak ?ckn ?id ?secret_arn
           ~connection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cak ?ckn ?id ?secret_arn ~connection_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?cak ?ckn ?id ?secret_arn ~connection_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
