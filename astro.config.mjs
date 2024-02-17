import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';
import { Common } from '/common';

export default defineConfig({
	// site: Common.githubPagesURL,
	// base: '/' + Common.repositoryName,
	integrations: [
		starlight({
			title: 'Error_418',
			favicon: '/favicon.png',
			components: {
				SocialIcons: './src/components/SocialLinks.astro',
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
					collapsed: true,
					autogenerate: { directory: 'rtb' },
				},
				{
					label: 'PB',
					collapsed: true,
					autogenerate: { directory: 'pb' },
				},
				// {
				// 	label: 'CA',
				// collapsed: true,
				// 	autogenerate: { directory: 'ca' },
				// },
			],
		}),
	],
});