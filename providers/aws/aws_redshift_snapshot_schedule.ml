(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_snapshot_schedule = {
  definitions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  identifier : string prop option; [@option]
  identifier_prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshift_snapshot_schedule) -> ()

let yojson_of_aws_redshift_snapshot_schedule =
  (function
   | {
       definitions = v_definitions;
       description = v_description;
       force_destroy = v_force_destroy;
       id = v_id;
       identifier = v_identifier;
       identifier_prefix = v_identifier_prefix;
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
         match v_identifier_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identifier", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
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
         if Stdlib.( = ) [] v_definitions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_definitions
           in
           let bnd = "definitions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_redshift_snapshot_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshift_snapshot_schedule

[@@@deriving.end]

let aws_redshift_snapshot_schedule ?description ?force_destroy ?id
    ?identifier ?identifier_prefix ?tags ?tags_all ~definitions () :
    aws_redshift_snapshot_schedule =
  {
    definitions;
    description;
    force_destroy;
    id;
    identifier;
    identifier_prefix;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  definitions : string list prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  identifier : string prop;
  identifier_prefix : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?force_destroy ?id ?identifier
    ?identifier_prefix ?tags ?tags_all ~definitions __id =
  let __type = "aws_redshift_snapshot_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       definitions = Prop.computed __type __id "definitions";
       description = Prop.computed __type __id "description";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       identifier_prefix =
         Prop.computed __type __id "identifier_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_snapshot_schedule
        (aws_redshift_snapshot_schedule ?description ?force_destroy
           ?id ?identifier ?identifier_prefix ?tags ?tags_all
           ~definitions ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?identifier
    ?identifier_prefix ?tags ?tags_all ~definitions __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?identifier
      ?identifier_prefix ?tags ?tags_all ~definitions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
