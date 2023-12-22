import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import { Common } from '/common';

// https://astro.build/config
export default defineConfig({
	// site: Common.githubPagesURL,
	// base: '/' + Common.repositoryName,
	integrations: [
		starlight({
			title: 'Documentazione',
			social: {
				github: Common.documentsRepositoryURL,
			},
			locales: {
				root: {
					label: 'Italiano',
					lang: 'it-IT',
				},
			},
			sidebar: [
				{
					label: 'Introduzione',
					autogenerate: { directory: 'introduzione' },
				},
				{
					label: 'RTB',
					// badge: 'Deprecato',
					autogenerate: { directory: 'rtb' },
				},
				// {
				// 	label: 'PB',
				// 	autogenerate: { directory: 'pb' },
				// },
				// {
				// 	label: 'CA',
				// 	autogenerate: { directory: 'ca' },
				// },
			],
		}),
	],
});