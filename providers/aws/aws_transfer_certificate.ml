(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_certificate = {
  certificate : string prop;
  certificate_chain : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  private_key : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  usage : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_certificate) -> ()

let yojson_of_aws_transfer_certificate =
  (function
   | {
       certificate = v_certificate;
       certificate_chain = v_certificate_chain;
       description = v_description;
       id = v_id;
       private_key = v_private_key;
       tags = v_tags;
       tags_all = v_tags_all;
       usage = v_usage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_usage in
         ("usage", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_chain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_certificate in
         ("certificate", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_certificate

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
