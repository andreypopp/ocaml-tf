(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dataexchange_revision = {
  comment : string prop option; [@option]
  data_set_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dataexchange_revision) -> ()

let yojson_of_aws_dataexchange_revision =
  (function
   | {
       comment = v_comment;
       data_set_id = v_data_set_id;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_set_id in
         ("data_set_id", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dataexchange_revision -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dataexchange_revision

[@@@deriving.end]

let aws_dataexchange_revision ?comment ?id ?tags ?tags_all
    ~data_set_id () : aws_dataexchange_revision =
  { comment; data_set_id; id; tags; tags_all }

type t = {
  arn : string prop;
  comment : string prop;
  data_set_id : string prop;
  id : string prop;
  revision_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?comment ?id ?tags ?tags_all ~data_set_id __id =
  let __type = "aws_dataexchange_revision" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       comment = Prop.computed __type __id "comment";
       data_set_id = Prop.computed __type __id "data_set_id";
       id = Prop.computed __type __id "id";
       revision_id = Prop.computed __type __id "revision_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dataexchange_revision
        (aws_dataexchange_revision ?comment ?id ?tags ?tags_all
           ~data_set_id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id ?tags ?tags_all ~data_set_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?id ?tags ?tags_all ~data_set_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
