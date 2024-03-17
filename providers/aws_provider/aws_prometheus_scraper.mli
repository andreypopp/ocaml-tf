(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_prometheus_scraper__destination__amp
type aws_prometheus_scraper__destination
type aws_prometheus_scraper__source__eks
type aws_prometheus_scraper__source
type aws_prometheus_scraper__timeouts
type aws_prometheus_scraper

val aws_prometheus_scraper :
  ?alias:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_prometheus_scraper__timeouts ->
  scrape_configuration:string ->
  destination:aws_prometheus_scraper__destination list ->
  source:aws_prometheus_scraper__source list ->
  string ->
  unit
