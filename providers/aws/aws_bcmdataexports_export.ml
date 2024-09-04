(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type export__data_query = {
  query_statement : string prop;
  table_configurations :
    string prop Tf_core.assoc Tf_core.assoc option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export__data_query) -> ()

let yojson_of_export__data_query =
  (function
   | {
       query_statement = v_query_statement;
       table_configurations = v_table_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_table_configurations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (Tf_core.yojson_of_assoc
                    (yojson_of_prop yojson_of_string))
                 v
             in
             let bnd = "table_configurations", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_query_statement
         in
         ("query_statement", arg) :: bnds
       in
       `Assoc bnds
    : export__data_query -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export__data_query

[@@@deriving.end]

type export__destination_configurations__s3_destination__s3_output_configurations = {
  compression : string prop;
  format : string prop;
  output_type : string prop;
  overwrite : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       export__destination_configurations__s3_destination__s3_output_configurations) ->
  ()

let yojson_of_export__destination_configurations__s3_destination__s3_output_configurations
    =
  (function
   | {
       compression = v_compression;
       format = v_format;
       output_type = v_output_type;
       overwrite = v_overwrite;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_overwrite in
         ("overwrite", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_output_type in
         ("output_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_compression in
         ("compression", arg) :: bnds
       in
       `Assoc bnds
    : export__destination_configurations__s3_destination__s3_output_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_export__destination_configurations__s3_destination__s3_output_configurations

[@@@deriving.end]

type export__destination_configurations__s3_destination = {
  s3_bucket : string prop;
  s3_prefix : string prop;
  s3_region : string prop;
  s3_output_configurations :
    export__destination_configurations__s3_destination__s3_output_configurations
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : export__destination_configurations__s3_destination) -> ()

let yojson_of_export__destination_configurations__s3_destination =
  (function
   | {
       s3_bucket = v_s3_bucket;
       s3_prefix = v_s3_prefix;
       s3_region = v_s3_region;
       s3_output_configurations = v_s3_output_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_output_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_export__destination_configurations__s3_destination__s3_output_configurations)
               v_s3_output_configurations
           in
           let bnd = "s3_output_configurations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_region in
         ("s3_region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_prefix in
         ("s3_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       `Assoc bnds
    : export__destination_configurations__s3_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export__destination_configurations__s3_destination

[@@@deriving.end]

type export__destination_configurations = {
  s3_destination :
    export__destination_configurations__s3_destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export__destination_configurations) -> ()

let yojson_of_export__destination_configurations =
  (function
   | { s3_destination = v_s3_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_export__destination_configurations__s3_destination)
               v_s3_destination
           in
           let bnd = "s3_destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : export__destination_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export__destination_configurations

[@@@deriving.end]

type export__refresh_cadence = { frequency : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : export__refresh_cadence) -> ()

let yojson_of_export__refresh_cadence =
  (function
   | { frequency = v_frequency } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       `Assoc bnds
    : export__refresh_cadence -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export__refresh_cadence

[@@@deriving.end]

type export = {
  description : string prop option; [@option]
  name : string prop;
  data_query : export__data_query list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_configurations :
    export__destination_configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  refresh_cadence : export__refresh_cadence list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : export) -> ()

let yojson_of_export =
  (function
   | {
       description = v_description;
       name = v_name;
       data_query = v_data_query;
       destination_configurations = v_destination_configurations;
       refresh_cadence = v_refresh_cadence;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_refresh_cadence then bnds
         else
           let arg =
             (yojson_of_list yojson_of_export__refresh_cadence)
               v_refresh_cadence
           in
           let bnd = "refresh_cadence", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_export__destination_configurations)
               v_destination_configurations
           in
           let bnd = "destination_configurations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_query then bnds
         else
           let arg =
             (yojson_of_list yojson_of_export__data_query)
               v_data_query
           in
           let bnd = "data_query", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : export -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_export

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_bcmdataexports_export = {
  tags : string prop Tf_core.assoc option; [@option]
  export : export list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bcmdataexports_export) -> ()

let yojson_of_aws_bcmdataexports_export =
  (function
   | { tags = v_tags; export = v_export; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_export then bnds
         else
           let arg = (yojson_of_list yojson_of_export) v_export in
           let bnd = "export", arg in
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
       `Assoc bnds
    : aws_bcmdataexports_export -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bcmdataexports_export

[@@@deriving.end]

let export__data_query ?table_configurations ~query_statement () :
    export__data_query =
  { query_statement; table_configurations }

let export__destination_configurations__s3_destination__s3_output_configurations
    ~compression ~format ~output_type ~overwrite () :
    export__destination_configurations__s3_destination__s3_output_configurations
    =
  { compression; format; output_type; overwrite }

let export__destination_configurations__s3_destination
    ?(s3_output_configurations = []) ~s3_bucket ~s3_prefix ~s3_region
    () : export__destination_configurations__s3_destination =
  { s3_bucket; s3_prefix; s3_region; s3_output_configurations }

let export__destination_configurations ?(s3_destination = []) () :
    export__destination_configurations =
  { s3_destination }

let export__refresh_cadence ~frequency () : export__refresh_cadence =
  { frequency }

let export ?description ?(data_query = [])
    ?(destination_configurations = []) ?(refresh_cadence = []) ~name
    () : export =
  {
    description;
    name;
    data_query;
    destination_configurations;
    refresh_cadence;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_bcmdataexports_export ?tags ?(export = []) ?timeouts () :
    aws_bcmdataexports_export =
  { tags; export; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?tags ?(export = []) ?timeouts __id =
  let __type = "aws_bcmdataexports_export" in
  let __attrs =
    ({
       tf_name = __id;
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
      yojson_of_aws_bcmdataexports_export
        (aws_bcmdataexports_export ?tags ~export ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?(export = []) ?timeouts __id =
  let (r : _ Tf_core.resource) = make ?tags ~export ?timeouts __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
