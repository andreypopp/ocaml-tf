(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_certificate = {
  certificate : string prop;  (** certificate *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  private_key : string prop option; [@option]  (** private_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  usage : string prop;  (** usage *)
}
[@@deriving yojson_of]
(** aws_transfer_certificate *)

let aws_transfer_certificate ?certificate_chain ?description ?id
    ?private_key ?tags ?tags_all ~certificate ~usage () :
    aws_transfer_certificate =
  {
    certificate;
    certificate_chain;
    description;
    id;
    private_key;
    tags;
    tags_all;
    usage;
  }

type t = {
  active_date : string prop;
  arn : string prop;
  certificate : string prop;
  certificate_chain : string prop;
  certificate_id : string prop;
  description : string prop;
  id : string prop;
  inactive_date : string prop;
  private_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  usage : string prop;
}

let make ?certificate_chain ?description ?id ?private_key ?tags
    ?tags_all ~certificate ~usage __id =
  let __type = "aws_transfer_certificate" in
  let __attrs =
    ({
       active_date = Prop.computed __type __id "active_date";
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       certificate_id = Prop.computed __type __id "certificate_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       inactive_date = Prop.computed __type __id "inactive_date";
       private_key = Prop.computed __type __id "private_key";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       usage = Prop.computed __type __id "usage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_certificate
        (aws_transfer_certificate ?certificate_chain ?description ?id
           ?private_key ?tags ?tags_all ~certificate ~usage ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_chain ?description ?id
    ?private_key ?tags ?tags_all ~certificate ~usage __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_chain ?description ?id ?private_key ?tags
      ?tags_all ~certificate ~usage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
