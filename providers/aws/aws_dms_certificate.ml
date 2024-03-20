(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_certificate = {
  certificate_id : string prop;  (** certificate_id *)
  certificate_pem : string prop option; [@option]
      (** certificate_pem *)
  certificate_wallet : string prop option; [@option]
      (** certificate_wallet *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dms_certificate *)

let aws_dms_certificate ?certificate_pem ?certificate_wallet ?id
    ?tags ?tags_all ~certificate_id () : aws_dms_certificate =
  {
    certificate_id;
    certificate_pem;
    certificate_wallet;
    id;
    tags;
    tags_all;
  }

type t = {
  certificate_arn : string prop;
  certificate_id : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?certificate_pem ?certificate_wallet ?id ?tags ?tags_all
    ~certificate_id __id =
  let __type = "aws_dms_certificate" in
  let __attrs =
    ({
       certificate_arn = Prop.computed __type __id "certificate_arn";
       certificate_id = Prop.computed __type __id "certificate_id";
       certificate_pem = Prop.computed __type __id "certificate_pem";
       certificate_wallet =
         Prop.computed __type __id "certificate_wallet";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_certificate
        (aws_dms_certificate ?certificate_pem ?certificate_wallet ?id
           ?tags ?tags_all ~certificate_id ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_pem ?certificate_wallet ?id
    ?tags ?tags_all ~certificate_id __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_pem ?certificate_wallet ?id ?tags ?tags_all
      ~certificate_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
