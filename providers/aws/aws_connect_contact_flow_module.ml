(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_contact_flow_module = {
  content : string prop option; [@option]
  content_hash : string prop option; [@option]
  description : string prop option; [@option]
  filename : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_contact_flow_module) -> ()

let yojson_of_aws_connect_contact_flow_module =
  (function
   | {
       content = v_content;
       content_hash = v_content_hash;
       description = v_description;
       filename = v_filename;
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
         match v_filename with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filename", arg in
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
         match v_content_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_contact_flow_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_contact_flow_module

[@@@deriving.end]

let aws_connect_contact_flow_module ?content ?content_hash
    ?description ?filename ?id ?tags ?tags_all ~instance_id ~name ()
    : aws_connect_contact_flow_module =
  {
    content;
    content_hash;
    description;
    filename;
    id;
    instance_id;
    name;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  contact_flow_module_id : string prop;
  content : string prop;
  content_hash : string prop;
  description : string prop;
  filename : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?content ?content_hash ?description ?filename ?id ?tags
    ?tags_all ~instance_id ~name __id =
  let __type = "aws_connect_contact_flow_module" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       contact_flow_module_id =
         Prop.computed __type __id "contact_flow_module_id";
       content = Prop.computed __type __id "content";
       content_hash = Prop.computed __type __id "content_hash";
       description = Prop.computed __type __id "description";
       filename = Prop.computed __type __id "filename";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_contact_flow_module
        (aws_connect_contact_flow_module ?content ?content_hash
           ?description ?filename ?id ?tags ?tags_all ~instance_id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?content ?content_hash ?description ?filename
    ?id ?tags ?tags_all ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?content ?content_hash ?description ?filename ?id ?tags
      ?tags_all ~instance_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
